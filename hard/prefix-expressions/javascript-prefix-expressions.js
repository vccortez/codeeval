'use strict';

const fs = require('fs');

fs.readFile(process.argv[2], (err, file) => {
  if (err) return;

  let trees = file.toString().split('\n')
    .filter(line => line !== '')
    .map(parse);

  let vals = trees.map(evaluate);

  vals.map(v => console.log(v));
});

function parse(str) {
  let tokens = str.split(' ');
  return getValue(tokens, 0);
}

function evaluate(obj) {
  let val;

  if (obj.type == 'num') {
    val = parseInt(obj.value, 10);
  } else if (obj.type == 'op') {
    switch (obj.value) {
      case '*':
        val = evaluate(obj.left) * evaluate(obj.right);
        break;
      case '/':
        val = evaluate(obj.left) / evaluate(obj.right);
        break;
      case '+':
        val = evaluate(obj.left) + evaluate(obj.right);
        break;
    }
  }

  return val;
}

function getValue(arr, i) {
  let val = {};
  if (/-?[0-9]+/.test(arr[i])) {
    val.index = i;
    val.type = 'num';
    val.value = arr[i];
  } else if (/[*+\/]/.test(arr[i])) {
    val.type = 'op';
    val.value = arr[i];
    val.left = getValue(arr, i + 1);
    val.right = getValue(arr, val.left.index + 1);
    val.index = val.right.index;
  }

  return val;
}
