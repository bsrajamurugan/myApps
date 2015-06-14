/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){
    
 //load datagrid
 $.get('getreports', function(data) {    
       console.log(data); 
       jQuery('#divdggrid').html('');
      jsonarraytotbl(data,'divdggrid');  
     });

$('#search').click(function() {   
    $.get('getreports', function(data) {    
      // console.log(data); 
       jQuery('#divdggrid').html('');
       jsonarraytotbl(data,'divdggrid');
     });
    });
    
createchart1();    
});
function jsonarraytotbl(jsonarray,dggrid){
    var tbl=$("<table/>").attr("id","mytable");
    var dggridid = "#" + dggrid ;
    $(dggridid).append(tbl);
    var th="<thead><tr> ";
    var thedit="<th width=\"50px\">Edit</th>";
    var th1="<th width=\"70px\">Task ID</th>";
    var th2="<th width=\"100px\">Project</th>";
    var th3="<th width=\"100px\">Task Type</th>";
    var th4="<th width=\"100px\">Task Name</th>";
    var th5="<th width=\"100px\">Change Source</th>";
    var th6="<th width=\"100px\">Change Desc.</th>";
    var th7="<th width=\"100px\">Developer</th>";
    var th8="<th width=\"100px\">Overall Status</th>";
    //var th9="<th width=\"100px\">Dev Comments</th>";
    var th10="<th width=\"100px\">Ref ID</th>";
    var th11="<th width=\"100px\">Reviewer</th>";
    var th12="<th width=\"100px\">Actual Start Date</th>";
    var th13="<th width=\"100px\">Actual End Date</th>";
    var th14="<th width=\"100px\">Actual Hours</th>";
    var th15="<th width=\"100px\">Planned Start Date</th>";
    var th16="<th width=\"100px\">Planned End Date</th>";
    var th17="<th width=\"100px\">Planned Hours</th>";
    var thlast="</tr></thead> <tbody>";
    var thall = th+thedit+th1+th2+th3+th4+th5+th6+th7+th8+th10+th11+th12+th13+th14+th15+th16+th17+thlast;
    $("#mytable").append(thall);
    for(var i=0;i<jsonarray.length;i++)
    {
        var tr="<tr>";
        var tdedit="<td Width=\"50px\"><a href=/HadoopDemoApp/main/home.jsp?uid="+jsonarray[i]["uid"]+">Edit</a></td>";
        var td1="<td width=\"60px\">"+jsonarray[i]["uid"]+"</td>";
        var td2="<td width=\"100px\">"+jsonarray[i]["project"]+"</td>";
        var td3="<td width=\"100px\">"+jsonarray[i]["tasktype"]+"</td>"
        var td4="<td width=\"100px\">"+jsonarray[i]["taskname"]+"</td>";
        var td5="<td width=\"100px\">"+jsonarray[i]["source"]+"</td>";
        var td6="<td width=\"100px\">"+jsonarray[i]["description"]+"</td>";
        var td7="<td width=\"100px\">"+jsonarray[i]["developer"]+"</td>";
        var td8="<td width=\"100px\">"+jsonarray[i]["overallstatus"]+"</td>";
        //var td9="<td width=\"100px\">"+jsonarray[i]["comments"]+"</td>";
        var td10="<td width=\"100px\">"+jsonarray[i]["refid"]+"</td>";
        var td11="<td width=\"100px\">"+jsonarray[i]["reviewer"]+"</td>";
        var td12="<td width=\"100px\">"+jsonarray[i]["actualstartdate"]+"</td>";
        var td13="<td width=\"100px\">"+jsonarray[i]["actualenddate"]+"</td>";
        var td14="<td width=\"100px\">"+jsonarray[i]["actualhours"]+"</td>";
        var td15="<td width=\"100px\">"+jsonarray[i]["plannedstartdate"]+"</td>";
        var td16="<td width=\"100px\">"+jsonarray[i]["plannedenddate"]+"</td>";
        var td17="<td width=\"100px\">"+jsonarray[i]["plannedhours"]+"</td>";
        var tdlast="</tr>";
       $("#mytable").append(tr+tdedit+td1+td2+td3+td4+td5+td6+td7+td8+td10+td11+td12+td13+td14+td15+td16+td17+tdlast); 
    }   
    $("#mytable").append("</tbody>");
    $('#mytable').attr('width','95%');
    $('#mytable').tableutils( {
           fixHeader: { width: 900, height: 250 }, 
           paginate: { type: 'numeric', pageSize: 2 },
		sort: { type: [ 'numeric', 'numeric','alphanumeric'] }, 
		columns: [ 
                           { label: 'Task ID'},
			   { label: 'Task ID'},
                           { label: 'Project'}
                         ]
            }
        );
}

function createchart1() {
    $.get('getchart1data',function(data){
        //console.log(data); 
          var parsedJson = $.parseJSON(data);
        $('#chart1').highcharts({
            chart:{
                type: 'bar'
            },
            title:{
              text:'Monthly Discharge count'  
            },
            xAxis: { 
            type: "category"
            },
        yAxis: {
            min: 0,
            title: {
                text: 'Total count'
            }
        },
        series: [{
                name: "Source1",
                data: parsedJson
            }]
        });
    });
}

function createchart () {
    $('#chart1').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'Monthly Average Rainfall'
        },
        subtitle: {
            text: 'Source: WorldClimate.com'
        },
        xAxis: {
            categories: [
                'Jan',
                'Feb',
                'Mar',
                'Apr',
                'May',
                'Jun',
                'Jul',
                'Aug',
                'Sep',
                'Oct',
                'Nov',
                'Dec'
            ],
            crosshair: true
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Rainfall (mm)'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [{
            name: 'Tokyo',
            data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]

        }, {
            name: 'New York',
            data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3, 91.2, 83.5, 106.6, 92.3]

        }, {
            name: 'London',
            data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 52.4, 65.2, 59.3, 51.2]

        }, {
            name: 'Berlin',
            data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 47.6, 39.1, 46.8, 51.1]

        }]
    });
}

