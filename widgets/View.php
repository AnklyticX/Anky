<?php
namespace app\widgets;
use yii\base\Widget;

class View extends Widget{


    public function run(){
        $html = '<div class="container">

        <table border="1">
                <tr >
                    <td class="leftcontent">
                <?= Html::encode($this->title) ?>
                    </td>
                    <td rowspan="6"  class="rightcontent"><img src="/opt/lampp/htdocs/typroject_cms/IMG_20220425_205025_980.jpg" alt="test" ></td>
                </tr>
                <tr>
                    <td><?=$model->name?></td>
                </tr>
                <tr><td>phone number</td></tr>
                <tr>
                    <td>gender</td>
                </tr>
                <tr><td>blood group</td></tr>
                <tr><td>address</td></tr>
               <tr>
                   <td>created </td>
                   <td rowspan="2" class="rightcontent">
                          <button>update</button> <button>test</button>
             
            </td>
                </tr>
                <tr><td>updated</td>
           </tr>
            </table>
        
        </div>
        ';
        return $html;
    
    }
}


?>