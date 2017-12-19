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
  $("#objeto_objetovalparametros_attributes_"+link+"__destroy").val("1");
  $("#objeto_objetovalparametros_attributes_"+link+"__destroy").closest(".nested-fields").hide();
}
function remove_fields2(link) {
  //console.log("#objeto_parametros_attributes_"+link+"__destroy");
  $("#criterio_criterioestados_attributes_"+link+"__destroy").val("1");
  $("#criterio_criterioestados_attributes_"+link+"__destroy").closest(".nested-fields").hide();
}

function remove_all_fields() {
  $('.destroy').val("1")
  $('.destroy').closest(".nested-fields").hide();
}

function add_fields2(link, association, content) {
  add_fields(link, association, content, 0);  
}

function add_fields(link, association, content, line) {
  var new_id = new Date().getTime() + (line);
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

function original_url(){
  var protocol = location.protocol;
  var slashes = protocol.concat("//");
  var host = slashes.concat(window.location.hostname);

  if((location.protocol == 'http:' && window.location.port != '80')||(location.protocol == 'https:' && window.location.port != '443')){
    host += ":"+window.location.port;
  }

  return host;
}

function getParamByObjectType(event){
  var fields_string = "";
  $.ajax({
    url: original_url()+"/parametros/to/"+event.target.selectedIndex+".json",
    success: function(data){
      remove_all_fields();
      for(i = 0; i < data.length; i++){
        fields_string = addSpecificFields(data[i]);
        add_fields(event.target, "objetovalparametros", fields_string, i)
        //$(event.target).hide();
      }


    }
  });
}

function getParamByStateType(event){
  var fields_string = "";
  $.ajax({
    url: original_url()+"/esparams/to/"+event.target.selectedIndex+".json",
    success: function(data){
      remove_all_fields();
      for(i = 0; i < data.length; i++){
        fields_string = addSpecificFieldsState(data[i]);
        add_fields(event.target, "estadoesvalparams", fields_string, i)
        //$(event.target).hide();
      }


    }
  });
}

function addSpecificFields(data){
      var fields = "<div class='control-group nested-fields'><div class='controls'><select class='parametro' disabled='disabled' onchange='myFunction(event)' name='objeto[objetovalparametros_attributes][new_objetovalparametros][valparametros][parametro_id]' id='objeto_objetovalparametros_attributes_new_objetovalparametros_valparametros_parametro_id'>";
          fields +=  "<option value='"+data.id+"' selected='selected'>"+data.name+"<\/option>";
        fields += "<\/select>"

        fields += "<select class='parametro' onchange='myFunction(event)' name='objeto[objetovalparametros_attributes][new_objetovalparametros][valparametro_id]' id='objeto_objetovalparametros_attributes_new_objetovalparametros_valparametros_valparametro_id'>";
        for(i2 = 0; i2 < data.valparametros.length; i2++){
          fields += "<option value='"+data.valparametros[i2].id+"'>"+data.valparametros[i2].valor+"<\/option>";
        }

        fields +="<\/select>";

        fields += "<input class='destroy' type='hidden' value='false' name='objeto[objetovalparametros_attributes][new_objetovalparametros][_destroy]' id='objeto_objetovalparametros_attributes_new_objetovalparametros__destroy' style='display: inline-block;'>";

        fields += "&nbsp;<a target='_blank' href='/valparametros/new?parametro_id="+data.id+"'>Adicionar</a><\/div><\/div>";

    return fields;
}

function addSpecificFieldsState(data){
      var fields = "<div class='control-group nested-fields'><div class='controls'><select class='esparam' disabled='disabled' onchange='myFunction(event)' name='estado[estadoesvalparams_attributes][new_estadoesvalparams][esvalparams][esparam_id]' id='estado_estadoesvalparams_attributes_new_estadoesvalparams_esvalparams_esparam_id'>";
          fields +=  "<option value='"+data.id+"' selected='selected'>"+data.name+"<\/option>";
        fields += "<\/select>"

        fields += "<select class='esparam' onchange='myFunction(event)' name='estado[estadoesvalparams_attributes][new_estadoesvalparams][esvalparam_id]' id='estado_estadoesvalparams_attributes_new_estadoesvalparams_esvalparams_esvalparam_id'>";
        for(i2 = 0; i2 < data.esvalparams.length; i2++){
          fields += "<option value='"+data.esvalparams[i2].id+"'>"+data.esvalparams[i2].valor+"<\/option>";
        }

        fields +="<\/select>";

        fields += "<input class='destroy' type='hidden' value='false' name='estado[estadoesvalparams_attributes][new_estadoesvalparams][_destroy]' id='estado_estadoesvalparams_attributes_new_estadoesvalparams__destroy' style='display: inline-block;'>";

        fields += "&nbsp;<a target='_blank' href='/esvalparams/new?esparam_id="+data.id+"'>Adicionar</a><\/div><\/div>";

    return fields;
}


function addSpecificFieldsCriterioEstado(data){
      var fields = "<div class='control-group nested-fields'><div class='controls'><select class='parametro' name='criterio[criterioestados_attributes][new_criterioestados][estado_id]' id='criterio_criterioestados_attributes_new_criterioestados_estados_estado_id'>";
          fields +=  "<option value='"+data.id+"' selected='selected'>"+data.name+"<\/option>";
        fields += "<\/select>"

        fields += "<input class='destroy' type='hidden' value='false' name='criterio[criterioestados_attributes][new_criterioestados][_destroy]' id='criterio_criterioestados_attributes_new_criterioestados__destroy' style='display: inline-block;'>";

        fields += "&nbsp;<a target='_blank' href='/estados/new'>Adicionar</a><\/div><\/div>";

    return fields;
}