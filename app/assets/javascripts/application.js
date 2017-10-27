// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// function remove_fields(link) {
//   $(link).previous("input[type=hidden]").value = "1";
//   $(link).up(".fields").hide();
// }

// function add_fields(link, association, content) {
//   var new_id = new Date().getTime();
//   var regexp = new RegExp("new_" + association, "g")
//   $(link).up().insert({
//     before: content.replace(regexp, new_id)
//   });
// }

//

function remove_fields(link) {
  console.log("#objeto_parametros_attributes_"+link+"__destroy");
  $("#objeto_parametros_attributes_"+link+"__destroy").val("1");
  $("#objeto_parametros_attributes_"+link+"__destroy").closest(".nested-fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $("#addButton").parent().append(content.replace(regexp, new_id));
}


function myFunction(event){
    console.log("haha")
    var backup = $('#field_backup_'+event.target.id.split('_')[3]);
    //objeto_objetovalparametros_attributes_1509076931649_valparametros_parametro_id
    var path_for_parametro_field = "#objeto_objetovalparametros_attributes_"+event.target.id.split('_')[3]+"_valparametros_parametro_id";
    var path_for_parametro_field_selected = "#objeto_objetovalparametros_attributes_"+event.target.id.split('_')[3]+"_valparametros_parametro_id :selected";
    //objeto_objetovalparametros_attributes_1509076931649_valparametro_id
    var path_for_valparametro_field = "#objeto_objetovalparametros_attributes_"+event.target.id.split('_')[3]+"_valparametro_id";
    if(!backup.val()){
      var valparametros = $(path_for_valparametro_field).html();
      backup.val(valparametros);
    }else{
      var valparametros = backup.val();
    }

    var parametro = $(path_for_parametro_field_selected).text();
    var options = $(valparametros).filter("optgroup[label='"+parametro+"']").html();
    if(options){
      $(path_for_valparametro_field).show();
      $(path_for_valparametro_field).html(options);
    }else{
      $(path_for_valparametro_field).hide();
    }
}
