const readLine = require('readline-sync');

const bmi = () => {
  const weight = readLine.questionFloat('Whats your weight?');
  const height = readLine.questionFloat('Whats your hight?');
  
  return weight/(height^2);
};

console.log(`BMI: ${bmi()}`);
