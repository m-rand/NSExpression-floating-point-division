# NSExpression: forcing floating point division

When you let NSExpression evaluate a math expression from string that contains a „integer / integer“ pattern, it always gives an integer result. So e.g. „3/2“ produces „1“. 

Quick tip: Replace at least one of the integers with a floating point number. That is, transform "3/2" to „3/2.0“, „3.0/2“, or „3.0/2.0“. Using regular expression, you can achieve that quite easily -- see the code snippet. 
