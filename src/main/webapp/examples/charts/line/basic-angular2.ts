import {Component} from '@angular/core';
import { PolymerElement } from '@vaadin/angular2-polymer';

@Component({
  selector: 'my-line-chart-basic-component',
  template: `
  <vaadin-line-chart id="lines-with-complex-html-tooltip">
    <chart-title>Complex tooltip</chart-title>

    <x-axis>
      <categories>Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec</categories>
    </x-axis>

    <tooltip shared="true" use-html="true" header-format="<small>{point.key}</small><table>" point-format="<tr><td style='color: {series.color}'>{series.name}: </td><td style='text-align: right'><b>{point.y} EUR</b></td></tr>" footer-format>
    </tooltip>

    <data-series name="Short">
      <data>29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4</data>
    </data-series>
    <data-series name="Long named series">
      <data>129.9, 171.5, 126.4, 229.2, 134.0, 136.0, 35.6, 142.5, 116.4, 154.1, 195.6, 154.4
      </data>
    </data-series>
  </vaadin-line-chart>
  `,
  directives: [ PolymerElement('vaadin-line-chart') ]
})

export class MyLineChartBasicComponent {
}
