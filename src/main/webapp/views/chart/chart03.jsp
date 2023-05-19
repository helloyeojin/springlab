<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<style>--%>
<%--  #c1, #c2, #c3{--%>
<%--    width: 300px;--%>
<%--    height: 300px;--%>
<%--    border: 1px solid cornflowerblue;--%>
<%--    margin-left:10px;--%>
<%--    padding: 0;--%>
<%--  }--%>
<%--</style>--%>
<script>
  let chart03 = {
    init: function(){
      this.getdata1();
      this.getdata2();
      this.getdata3();
    },
    getdata1: function(){
      $.ajax({
        url: '/chart0301',
        success: function(result){
          chart03.display1(result);
        }
      });
    },
    getdata2: function(){
      $.ajax({
        url: '/chart0302',
        success: function(result){
          chart03.display2(result);
        }
      });
    },
    getdata3: function(){
      $.ajax({
        url: '/chart0303',
        success: function(result){
          chart03.display3(result);
        }
      });
    },
    display1: function(result){
      Highcharts.chart('c1', {
        chart: {
          type: 'pie',
          options3d: {
            enabled: true,
            alpha: 45
          }
        },
        title: {
          text: 'Beijing 2022 gold medals by country',
          align: 'left'
        },
        subtitle: {
          text: '3D donut in Highcharts',
          align: 'left'
        },
        plotOptions: {
          pie: {
            innerSize: 100,
            depth: 45
          }
        },
        series: [{
          name: 'Medals',
          data: result
        }]
      });

    },
    display2: function(result){
      Highcharts.setOptions({
        colors: Highcharts.getOptions().colors.map(function (color) {
          return {
            radialGradient: {
              cx: 0.4,
              cy: 0.3,
              r: 0.5
            },
            stops: [
              [0, color],
              [1, Highcharts.color(color).brighten(-0.2).get('rgb')]
            ]
          };
        })
      });

// Set up the chart
      var chart = new Highcharts.Chart({
        chart: {
          renderTo: 'c2',
          margin: 100,
          type: 'scatter3d',
          animation: false,
          options3d: {
            enabled: true,
            alpha: 10,
            beta: 30,
            depth: 250,
            viewDistance: 5,
            fitToPlot: false,
            frame: {
              bottom: { size: 1, color: 'rgba(0,0,0,0.02)' },
              back: { size: 1, color: 'rgba(0,0,0,0.04)' },
              side: { size: 1, color: 'rgba(0,0,0,0.06)' }
            }
          }
        },
        title: {
          text: 'Draggable box'
        },
        subtitle: {
          text: 'Click and drag the plot area to rotate in space'
        },
        plotOptions: {
          scatter: {
            width: 10,
            height: 10,
            depth: 10
          }
        },
        yAxis: {
          min: 0,
          max: 10,
          title: null
        },
        xAxis: {
          min: 0,
          max: 10,
          gridLineWidth: 1
        },
        zAxis: {
          min: 0,
          max: 10,
          showFirstLabel: false
        },
        legend: {
          enabled: false
        },
        series: [{
          name: 'Data',
          colorByPoint: true,
          accessibility: {
            exposeAsGroupOnly: true
          },
          data: result
        }]
      });


// Add mouse and touch events for rotation
      (function (H) {
        function dragStart(eStart) {
          eStart = chart.pointer.normalize(eStart);

          var posX = eStart.chartX,
                  posY = eStart.chartY,
                  alpha = chart.options.chart.options3d.alpha,
                  beta = chart.options.chart.options3d.beta,
                  sensitivity = 5,  // lower is more sensitive
                  handlers = [];

          function drag(e) {
            // Get e.chartX and e.chartY
            e = chart.pointer.normalize(e);

            chart.update({
              chart: {
                options3d: {
                  alpha: alpha + (e.chartY - posY) / sensitivity,
                  beta: beta + (posX - e.chartX) / sensitivity
                }
              }
            }, undefined, undefined, false);
          }

          function unbindAll() {
            handlers.forEach(function (unbind) {
              if (unbind) {
                unbind();
              }
            });
            handlers.length = 0;
          }

          handlers.push(H.addEvent(document, 'mousemove', drag));
          handlers.push(H.addEvent(document, 'touchmove', drag));


          handlers.push(H.addEvent(document, 'mouseup', unbindAll));
          handlers.push(H.addEvent(document, 'touchend', unbindAll));
        }
        H.addEvent(chart.container, 'mousedown', dragStart);
        H.addEvent(chart.container, 'touchstart', dragStart);
      }(Highcharts));
      },

    display3: function(result){
      Highcharts.chart('c3', {

        chart: {
          type: 'bubble',
          plotBorderWidth: 1,
          zoomType: 'xy'
        },

        title: {
          text: 'Highcharts bubbles with radial gradient fill',
          align: 'left'
        },

        xAxis: {
          gridLineWidth: 1,
          accessibility: {
            rangeDescription: 'Range: 0 to 100.'
          }
        },

        yAxis: {
          startOnTick: false,
          endOnTick: false,
          accessibility: {
            rangeDescription: 'Range: 0 to 100.'
          }
        },

        series: [{
          data: result[0],
          marker: {
            fillColor: {
              radialGradient: { cx: 0.4, cy: 0.3, r: 0.7 },
              stops: [
                [0, 'rgba(255,255,255,0.5)'],
                [1, Highcharts.color(Highcharts.getOptions().colors[0]).setOpacity(0.5).get('rgba')]
              ]
            }
          }
        }, {
          data: result[1],
          marker: {
            fillColor: {
              radialGradient: { cx: 0.4, cy: 0.3, r: 0.7 },
              stops: [
                [0, 'rgba(255,255,255,0.5)'],
                [1, Highcharts.color(Highcharts.getOptions().colors[1]).setOpacity(0.5).get('rgba')]
              ]
            }
          }
        }]

      });
    }
  };
  $(function(){
    chart03.init();
  });
</script>


<div class="col-sm-8 text-left">
  <div class="container">
    <h1>chart03</h1>
    <div class="row">
      <div class="col-sm-4" id="c1">
      </div>
      <div class="col-sm-4" id="c2">
      </div>
      <div class="col-sm-4" id="c3">
      </div>
    </div>
  </div>
</div>
