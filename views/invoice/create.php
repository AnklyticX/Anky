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
$this->title = "Add Invoice";
?>
<style>
    #invoice-discount:focus, .item-input:focus, .description-input:focus, .cost-input:focus, .qty-input:focus {
        border: none;
        outline: 0;
        box-shadow: -3px 3px 2px -2px gray;
    }

    #invoice-discount, .item-input, .description-input, .cost-input, .qty-input {
        background-color: #0e0e0e00;
        box-shadow: none;
        border: none;
        border-bottom: 1px solid gray;
    }

    #invoice-gst {
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

    .select-row:hover {
        cursor: hand;
        cursor: pointer;
    }

    .panel-heading {
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
    <?php $form = ActiveForm::begin(['action' => ['invoice/save-invoice']]); ?>

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
            ])->label("Company Name (<a data-toggle=\"modal\" href='#modal-id'>Add Client</a>)");
            ?>

            <?php Pjax::end() ?>

        </div>
        <div class="col-md-2">
            <?= $form->field($model, 'invoice_number')->textInput(['maxlength' => true])->input('text') ?>
            <p><i>Auto-generated if field left empty</i></p>
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
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td><?= $form->field($model, 'discount')->textInput()->input('text', ['placeholder' => 'Discount %', 'value' => '0'])->label("Discount %") ?></td>
            <td class="discount-value">0</td>
            <td>
            </td>
        </tr>
        <tr>
            <td colspan=3></td>
            <td><b>Subtotal</b></td>
            <td class="subtotal">0</td>
            <td>
            </td>
        </tr>
        <tr>

            <td colspan=3></td>
            <td><?= $form->field($model, 'gst')->textInput()->input('text', ['placeholder' => 'GST %', 'value' => '0',  ])->label("GST %") ?></td>
            <td class="gst-value">0</td>
            <td>
            </td>
        </tr>
        <tr>

            <td colspan=3></td>
            <td><b>TOTAL</b></td>
            <td class="total">0</td>
            <input type="hidden" name="Invoice[total]" value="0" class="total-input">
            <input type="hidden" name="Invoice[total]" value="0" class="total-input">
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
                        <p><i>Any additional fields to be added in the invoice can be added by the following fields</i></p>
                    </div>
                    <div class="col-md-6 text-right">
                        <a class="field-btn btn btn-default">Add Field</a>
                    </div>
                </div>
                <div class="fields">
                    <div class="row field-template">
                        <div class="col-md-3">
                            <p>Field Label
                            <input type="text" name="Invoice[field_label][]" class="form-control">
                            </p>
                        </div>
                        <div class="col-md-3">
                            <p>Field Value
                            <input type="text" name="Invoice[field_value][]" class="form-control">
                            </p>
                        </div>
                        <div class="col-md-1 field-remove">
                            <p><br>
                                <a style="color: red;"  class="btn btn-default"><span class="glyphicon glyphicon-remove"></span></a>
                            </p>
                        </div>
                    </div>
                </div>
          </div>
    </div>

    <div class="panel settings panel-default">
          <div class="panel-heading">
                <h3 class="panel-title"><b>Print Settings</b></h3>
          </div>
          <div class="panel-body">
                <div class="row">
                    <div class="col-md-2">

                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="Invoice[print_setting][]" value="hide_qty">
                                Hide Qty column
                            </label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="Invoice[print_setting][]" value="hide_unit_price">
                                Hide unit price column
                            </label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="Invoice[print_setting][]" value="hide_authorized_signature">
                                Hide authorized signature
                            </label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="Invoice[print_setting][]" value="hide_logo">
                                Hide Logo
                            </label>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="Invoice[print_setting][]" value="hide_company_name">
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
            let item_amount = 0;
            let discount_amount = 0;
            let gst_amount = 0;
            let selected_ele;
            $(".add-item-btn").click(function(){
                var item = $(".item-input").val();
                var description = $(".description-input").val();
                var cost = $(".cost-input").val();
                var qty = $(".qty-input").val();
                var amount = 0;
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
                calculateGST();
            });

            $('body').click(function(){
                $(".select-row").css('background-color', 'white');
                $(".down-btn").css('display', 'none');
                $(".up-btn").css('display', 'none');
            });

            $(document).on("click",'.del-btn', function(e){
                item_amount -= parseFloat($(this).parent().parent().find(".amount").html());
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
                    selected_ele = null;
                }
            });
        });

        function goDown(ele){
            var current = $(ele).parent().parent();
            var next = $(current).next();
            if($(next).find(".amount").html() == undefined){
                return;
            }
            var amount = parseFloat($(current).find(".amount").html());
            var nextAmount = parseFloat($(next).find(".amount").html());
            $(current).find(".amount").html(nextAmount.toFixed(2));
            $(next).find(".amount").html(amount.toFixed(2));

            var qty = parseFloat($(current).find("input[name='Invoice[qty][]']").val());
            var nextQty = parseFloat($(next).find("input[name='Invoice[qty][]']").val());
            $(current).find("input[name='Invoice[qty][]']").val(nextQty);
            $(next).find("input[name='Invoice[qty][]']").val(qty);

            var item = $(current).find("input[name='Invoice[item][]']").val();
            var nextItem = $(next).find("input[name='Invoice[item][]']").val();
            $(current).find("input[name='Invoice[item][]']").val(nextItem);
            $(next).find("input[name='Invoice[item][]']").val(item);

            var description = $(current).find("input[name='Invoice[description][]']").val();
            var nextDescription = $(next).find("input[name='Invoice[description][]']").val();
            $(current).find("input[name='Invoice[description][]']").val(nextDescription);
            $(next).find("input[name='Invoice[description][]']").val(description);

            var price = $(current).find("input[name='Invoice[price][]']").val();
            var nextPrice = $(next).find("input[name='Invoice[price][]']").val();
            $(current).find("input[name='Invoice[price][]']").val(nextPrice);
            $(next).find("input[name='Invoice[price][]']").val(price);
            
            $(next).after($(current));
            item_amount -= parseFloat(amount);
            item_amount += parseFloat(nextAmount);
            calculateDiscount();
        }

        function goUp(ele){
            var current = $(ele).parent().parent();
            var prev = $(current).prev();
            if($(prev).find(".amount").html() == undefined){
                return;
            }
            var amount = parseFloat($(current).find(".amount").html());
            var prevAmount = parseFloat($(prev).find(".amount").html());
            $(current).find(".amount").html(prevAmount.toFixed(2));
            $(prev).find(".amount").html(amount.toFixed(2));

            var qty = parseFloat($(current).find("input[name='Invoice[qty][]']").val());
            var prevQty = parseFloat($(prev).find("input[name='Invoice[qty][]']").val());
            $(current).find("input[name='Invoice[qty][]']").val(prevQty);
            $(prev).find("input[name='Invoice[qty][]']").val(qty);

            var item = $(current).find("input[name='Invoice[item][]']").val();
            var prevItem = $(prev).find("input[name='Invoice[item][]']").val();
            $(current).find("input[name='Invoice[item][]']").val(prevItem);
            $(prev).find("input[name='Invoice[item][]']").val(item);

            var description = $(current).find("input[name='Invoice[description][]']").val();
            var prevDescription = $(prev).find("input[name='Invoice[description][]']").val();
            $(current).find("input[name='Invoice[description][]']").val(prevDescription);
            $(prev).find("input[name='Invoice[description][]']").val(description);

            var price = $(current).find("input[name='Invoice[price][]']").val();
            var prevPrice = $(prev).find("input[name='Invoice[price][]']").val();
            $(current).find("input[name='Invoice[price][]']").val(prevPrice);
            $(prev).find("input[name='Invoice[price][]']").val(price);

            $(current).after($(prev));
            item_amount -= parseFloat(amount);
            item_amount += parseFloat(prevAmount);
            calculateDiscount();
        }

        function calculateDiscount(){
            var discount = $("#invoice-discount").val();
            var subtotal = parseFloat(item_amount);
            if(!isNaN(discount)){
                discount_amount = parseFloat((Number(discount) * parseFloat(subtotal) / 100)).toFixed(2);
                subtotal -= discount_amount;
            }else{
                discount_amount = 0;
            }
            $(".discount-value").html(discount_amount);
            $(".subtotal").html(parseFloat(subtotal).toFixed(2));
            calculateGST();
        }

        function calculateGST(){
            var gst = $("#invoice-gst").val();
            var subtotal = parseFloat($(".subtotal").html());
            if(!isNaN(gst)){
                gst_amount = parseFloat((Number(gst) * parseFloat(subtotal) / 100)).toFixed(2);
                subtotal += parseFloat(gst_amount);
            }else{
                gst_amount = 0;
            }
            $(".gst-value").html(gst_amount);
            $(".total").html(parseFloat(subtotal).toFixed(2));
        }

        $(".field-btn").click(function(){
            $(".fields").append('<div class="row field-template">\
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
        </div>');
        });

        $(document).on("click",".field-remove", function(e){
            $(this).parent().parent().remove();
        });

        $(".content-table").on("click", ".select-row", function(){
            $(".content-table tr").css('background-color', 'white');
            $(this).css('background-color', '#fff799');
        });

        $(document).on("click",".amount", function(e){
            $(".select-row").css('background-color', 'white');
            $(this).parent().css('background-color', '#fff799');
        });

        $('.content-table').on("keydown", "input[type='text']", function(e){
            if(e.which == 13){
                var currentEle = $(this);
                var value = $(this).val();
                var name = $(this).attr('name');
                $.ajax({
                    type:'POST',
                    url: 'index.php?r=invoice/update-item',
                    data: {value: value, name: name},
                    success: function(response) {
                        $(currentEle).val(response);
                    }
                });
            }
        });

        $('.content-table').on("blur", "input[type='text']", function(e){
            var currentEle = $(this);
            var value = $(this).val();
            var name = $(this).attr('name');
            $.ajax({
                type:'POST',
                url: 'index.php?r=invoice/update-item',
                data: {value: value, name: name},
                success: function(response) {
                    $(currentEle).val(response);
                }
            });
        });

    JS;

    $this->registerJs($script);
?>
