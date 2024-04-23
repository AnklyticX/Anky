<?php

use app\models\Client;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\date\DatePicker;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $model app\models\Invoice */
/* @var $form yii\widgets\ActiveForm */
$this->title = "Update Invoice - ". $model->invoice_number;
?>
<style>
    #invoice-discount:focus, .item-input:focus, .description-input:focus, .cost-input:focus, .qty-input:focus{
        border: none;
        outline: 0;
        box-shadow: -3px 3px 2px -2px gray;
    }
    #invoice-discount, .item-input, .description-input, .cost-input, .qty-input{
        background-color: #0e0e0e00;
        box-shadow: none;
        border: none;
        border-bottom: 1px solid gray;
    }
    #invoice-gst{
        box-shadow: none;
        border: none;
        border-bottom: 1px solid gray;
    }

    .tr-form {
        margin: 10px;
        background-color: #e4e4e4;
        border: 2px solid #8080802e;
        box-shadow: 0px 0px 8px 0px grey;
    }
    .select-row:hover{
        cursor: hand;
        cursor: pointer;
    }
    .panel-heading{
        cursor: pointer;
        cursor: hand;
    }
</style>
<div class="client-create modal fade" id="modal-id">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header text-center" style="background-color: #a73434">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" style="color: white">NEW CLIENT</h4>
                </div>
                <div class="modal-body">
                    <?= $this->render('client_form', [
                        'client' => $client,
                    ]) ?>
                </div>
            </div>
        </div>
    </div>
<div class="invoice-form">
    <?php $form = ActiveForm::begin(['action' => ['invoice/update-invoice']]); ?>
    <?= $form->field($model, 'invoice_id')->hiddenInput(['maxlength' => true])->label(""); ?>
    <div class="row">
        <div class="col-md-3">
            <?php Pjax::begin(['id' => 'countries']) ?>
            <?php 
                $clients = Client::find()
                                ->where(['is_deleted' => 0])
                                ->all();
                $client_array = ArrayHelper::map($clients, 'client_id', 'companyname');

                echo $form->field($model, 'client_id')->widget(Select2::classname(), [
                    'data' => $client_array,
                    'language' => 'En',
                    'options' => ['placeholder' => 'Select client'],
                    'pluginOptions' => [
                        'allowClear' => true
                    ],
                ])->label("Client Name (<a data-toggle=\"modal\" href='#modal-id'>Add Client</a>)");
            ?>
            <?php Pjax::end() ?>
            
        </div>
        <div class="col-md-2">
            <?= $form->field($model, 'invoice_number')->textInput(['maxlength' => true])->input('text', ['placeholder' => 'auto generated number if empty' ]) ?>
        </div>
        <div class="col-md-3">
            <?php 
            
                echo '<label>Invoice Date</label>';
                echo DatePicker::widget([
                    'name' => 'Invoice[invoice_date]', 
                    'value' => date('Y-m-d'),
                    'options' => ['placeholder' => 'Select issue date ...'],
                    'pluginOptions' => [
                        'format' => 'yyyy-mm-dd',
                        'todayHighlight' => true
                    ]
                ]);
            ?>
        </div>
        <div class="col-md-2">
            <?= $form->field($model, 'payment_status')->dropdownList(['0' => "Not Paid", '1' => "Paid"]) ?>
        </div>
        <div class="col-md-2">
            <?= $form->field($model, 'currency')->dropdownList(['INR' => "Indian Rupees", 'US Dollar' => "US Dollar"]) ?>
        </div>
    </div>

    <br>
    <table class="table table-bordered content-table">
        
        <tr style="background-color: #f8f8f8;">
            <th>#</th>
            <th>CONTENT</th>
            <th>UNIT PRICE</th>
            <th>QTY</th>
            <th>TOTAL</th>
            <th></th>
        </tr>
        <tr class="tr-form">
            <td>#</td>
            <td>
                <input type="text" class="item-input form-control" placeholder="Item sold"><br>
                <input type="text" class="description-input form-control" placeholder="Description">
            </td>
            <td><input type="text" class="cost-input form-control" value="0"></td>
            <td><input type="text" class="qty-input form-control" value="0"></td>
            <td></td>
            <td>
                <a style="padding: 3px 6px;" class="add-item-btn btn btn-default"><span class="glyphicon glyphicon-plus"></span></a>
            </td>
        </tr>
        <?php 
            $subtotal = 0;
            $itemtotal = 0;
            $model->content = json_decode($model->content);
            $discount_amount = 0;
            $gst_amount = 0;
            if(is_array($model->content)){
                foreach($model->content as $key => $value){
                    if(is_numeric($value[2]) && is_numeric($value[3])){
                        $subtotal += $value[2] * $value[3];
                    }

        ?>
                <tr class='select-row'>
                    <td>#</td>
                    <td><p><?= $value[0] ?> <br><i><?= $value[1] ?></i></p></td>
                    <td><?= $value[2] ?></td>
                    <td><?= $value[3] ?></td>
                    <td class="amount"><?= is_numeric($value[2]) && is_numeric($value[3]) ? $value[2] * $value[3] : 0?></td>
                    <td>
                        <a  style="padding: 3px 6px;" class="del-btn  btn btn-default"><span class="glyphicon glyphicon-trash"></span></a>
                        <a style="padding: 3px 6px; display: none;" class="up-btn btn btn-default"><span class="glyphicon glyphicon-menu-up"></span></a>
                        <a style="padding: 3px 6px; display: none;" class="down-btn btn btn-default"><span class="glyphicon glyphicon-menu-down"></span></a>
                        <input type="hidden" value="<?= $value[3] ?>" name="Invoice[qty][]">
                        <input type="hidden" value="<?= $value[0] ?>" name="Invoice[item][]">
                        <input type="hidden" value="<?= $value[1]  ?>" name="Invoice[description][]">
                        <input type="hidden" value="<?= $value[2] ?>" name="Invoice[price][]">
                    </td>
                </tr>
        <?php
                }
            }
            $itemtotal = $subtotal;
        ?>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td><?= $form->field($model, 'discount')->textInput()->input('text', ['placeholder' => 'Discount %'])->label("Discount %") ?></td>
            <td class="discount-value">
                <?php 
                    if($model->discount != "" &&  $model->discount != 0){
                        echo $discount_amount = $subtotal * ($model->discount / 100);
                    }else{
                        echo 0;
                    }
                ?>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan=3></td>
            <td><b>Subtotal</b></td>
            <td class="subtotal"><?= $subtotal -$discount_amount  ?></td>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan=3></td>
            <td><?= $form->field($model, 'gst')->textInput()->input('text', ['placeholder' => 'GST %'])->label("GST %") ?></td>
            <td class="gst-value">
                <?php 
                    if($model->gst != "" &&  $model->gst != 0){
                        echo $gst_amount = $subtotal * ($model->gst / 100);
                    }else{
                        echo 0;
                    }
                ?>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            
            <td colspan=3></td>
            <td><b>TOTAL</b></td>
            <td class="total">
                <?php 
                    echo ($subtotal -$discount_amount) + $gst_amount;
                ?>
            </td>
            <td></td>
        </tr>
    </table>

    
    <div class="panel settings panel-default">
          <div class="panel-heading">
                <h3 class="panel-title"><b>Additional Fields</b></h3>
          </div>
          <div class="panel-body">
                <div class="row">
                    <div class="col-md-6">
                        <p><i>Any addition filds to be added in the invoice can be added by the following fields</i></p>
                    </div>
                    <div class="col-md-6 text-right">
                        <a class="field-btn btn btn-default">Add Field</a>
                    </div>
                </div>
                <div class="fields">
                        <?php if($model->additional_fields != ""){ 
                                $extraFields = json_decode($model->additional_fields);
                                if(is_array($extraFields)){
                                    foreach($extraFields as $key => $value){
                            ?>
                                <div class="row field-template">
                                    <div class="col-md-3">
                                        <p>Field Label
                                        <input type="text" value="<?= $value[0] ?>" name="Invoice[field_label][]" class="form-control">
                                        </p>
                                    </div>
                                    <div class="col-md-3">
                                        <p>Field Value
                                        <input type="text" value="<?=  $value[1] ?>" name="Invoice[field_value][]" class="form-control">
                                        </p>
                                    </div>
                                    <div class="col-md-1 field-remove">
                                        <p><br>
                                            <a style="color: red;"  class="btn btn-default"><span class="glyphicon glyphicon-remove"></span></a>
                                        </p>
                                    </div>
                                </div>
                        <?php 
                                }
                            }
                        }
                        
                        ?>  
                    
                </div>
          </div>
    </div>

    <div class="panel settings panel-default">
          <div class="panel-heading">
                <h3 class="panel-title"><b>Print Settings</b></h3>
          </div>
          <?php $setting = json_decode($model->invoice_option);?>
          <div class="panel-body">
                <div class="row">
                    <div class="col-md-2">
                        
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="Invoice[print_setting][]" value="hide_qty" <?= in_array("hide_qty", $setting) ? "checked" : "" ?>>
                                Hide Qty column
                            </label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="Invoice[print_setting][]" value="hide_unit_price" <?= in_array("hide_unit_price", $setting) ? "checked" : "" ?>>
                                Hide unit price column
                            </label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="Invoice[print_setting][]" value="hide_authorized_signature" <?= in_array("hide_authorized_signature", $setting) ? "checked" : "" ?>>
                                Hide authorized signature
                            </label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="Invoice[print_setting][]" value="hide_logo" <?= in_array("hide_logo", $setting) ? "checked" : "" ?>>
                                Hide Logo
                            </label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="Invoice[print_setting][]" value="hide_company_name" <?= in_array("hide_company_name", $setting) ? "checked" : "" ?>>
                                Hide company name
                            </label>
                        </div>
                    </div>
                </div>
          </div>
    </div>
    

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-Default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
<input type="hidden" name="Invoice[invoice_number]">
<?php 
    $script = <<< JS
        $(document).ready(function(){
            let total = 0;
            let item_amount = $itemtotal;
            let discount_amount = $discount_amount;
            let gst_amount = $gst_amount;
            let selected_ele;
            $(".add-item-btn").click(function(){
                var item = $(".item-input").val();
                var description = $(".description-input").val();
                var cost = $(".cost-input").val();
                var qty = $(".qty-input").val();
                amount = 0;
                if(!isNaN(cost) && !isNaN(qty)){
                    amount = parseFloat((Number(cost) * parseFloat(qty))).toFixed(2);
                }else{
                    amount = 0;
                }
                var tr = '\
                <tr class=\'select-row\'>\
                    <td>#</td>\
                    <td>\
                        <p>'+item+'<br><i>'+description+'</i></p>\
                    </td>\
                    <td>'+cost+'</td>\
                    <td>'+qty+'</td>\
                    <td class=\'amount\'>'+amount+'</td>\
                    <td>\
                        <a  style="padding: 3px 6px;" class="del-btn  btn btn-default"><span class="glyphicon glyphicon-trash"></span></a>\
                        <a style="padding: 3px 6px; display: none;" class="up-btn btn btn-default"><span class="glyphicon glyphicon-menu-up"></span></a>\
                        <a style="padding: 3px 6px; display: none;" class="down-btn btn btn-default"><span class="glyphicon glyphicon-menu-down"></span></a>\
                        <input type="hidden" value=\''+qty+'\' name="Invoice[qty][]">\
                        <input type="hidden" value=\''+item+'\' name="Invoice[item][]">\
                        <input type="hidden" value=\''+description+'\' name="Invoice[description][]">\
                        <input type="hidden" value=\''+cost+'\' name="Invoice[price][]">\
                    </td>\
                </tr>';
                $(".item-input").val("");
                $(".description-input").val("");
                $(".cost-input").val("0");
                $(".qty-input").val("1");
                $(".content-table tr").eq(-5).after(tr);
                item_amount = parseFloat(item_amount) + parseFloat(amount);
                calculateDiscount();
            });

            $("#invoice-discount").keyup(function(){
                calculateDiscount();
            });
            $("#invoice-gst").keyup(function(){
                console.log("GST!");
                calculateGST();
            });

            $('body').click(function(){
                $(".select-row").css('background-color', 'white');
                $(".down-btn").css('display', 'none');
                $(".up-btn").css('display', 'none');
            });

            $(document).on("click",'.del-btn', function(e){
                item_amount -= Number($(this).parent().parent().find(".amount").html());
                calculateDiscount();
                $(this).parent().parent().remove();
            });
            $(document).on("click",'.down-btn', function(e){
                goDown($(this));
            });
            $(document).on("click",'.up-btn', function(e){
                goUp($(this));
            });
            $(document).on("click",'.select-row', function(e){
                $(".select-row").css('background-color', 'white');
                $(this).find(".down-btn").css('display', 'inline');
                $(this).find(".up-btn").css('display', 'inline');
                $(this).css('background-color', '#fff799');
                selected_ele = $(this);
            });
            $(document).keydown(function(e) {
                if(e.which == 38){
                    goUp($(selected_ele).find(".up-btn"));
                }
                if(e.which == 40){
                   goDown($(selected_ele).find(".down-btn"));
                }
                if (e.key == "Escape") { 
                    $(".down-btn").css('display', 'none');
                    $(".up-btn").css('display', 'none');
                    $(".select-row").css('background-color', 'white');
                } 
                
            });
            function goDown(ele){
                var index= $(ele).parent().parent().index();
                if(($(".content-table").children().children().last().index()-(index+1) > 3)){
                    $(ele).parent().parent().insertAfter($(ele).parent().parent().parent().find("tr").eq(index+1));
                }
            }
            function goUp(ele){
                var index= $(ele).parent().parent().index();
                if((index > 2)){
                    $(ele).parent().parent().insertBefore($(ele).parent().parent().parent().find("tr").eq(index-1));
                }
            }

            function calculateDiscount(){
                let discount = $("#invoice-discount").val();
                discount = discount / 100;
                discount_amount = parseFloat((discount * item_amount)).toFixed(2);
                $(".discount-value").html(discount_amount);
                $(".subtotal").html(parseFloat((item_amount - discount_amount)).toFixed(2));
                $(".total").html(parseFloat(((item_amount - discount_amount) + gst_amount)).toFixed(2));
                $(".total-input").val(parseFloat(((item_amount - discount_amount) + gst_amount)).toFixed(2));
                calculateGST();
            }

            function calculateGST(){
                let gst = parseFloat($("#invoice-gst").val());
                console.log(discount_amount);
                gst = gst / 100;
                gst_amount = parseFloat(((item_amount - discount_amount) * gst)).toFixed(2);
                console.log( gst_amount);
                $(".gst-value").html(gst_amount);
                $(".total").html(parseFloat((item_amount - discount_amount)+ Number(gst_amount)).toFixed(2));
                $(".total-input").val(parseFloat((item_amount - discount_amount)+ Number(gst_amount)).toFixed(2));
            }

            $('.panel-heading').next().hide();
            $(".panel-heading").click(function(){
                $(this).next().slideToggle();
            });
            $(".field-btn").click(function(){
                div = '<div class="row field-template">\
                        <div class="col-md-3">\
                            <p>Field Label\
                            <input type="text" name="Invoice[field_label][]" class="form-control">\
                            </p>\
                        </div>\
                        <div class="col-md-3">\
                            <p>Field Value\
                            <input type="text" name="Invoice[field_value][]" class="form-control">\
                            </p>\
                        </div>\
                        <div class="col-md-1 field-remove">\
                            <p><br>\
                                <a style="color: red;"  class="btn btn-default"><span class="glyphicon glyphicon-remove"></span></a>\
                            </p>\
                        </div>\
                    </div>';
                $(".fields").append(div);
            });
        });
        $(document).on("click",".field-remove", function(e){
            $(this).parent().remove();
        });
JS;
    $this->registerJS($script);
?>