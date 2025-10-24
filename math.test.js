// math.test.js
const { suma, multiplicar } = require('./math');

test('suma 2 + 3 debe ser 5', () => {
  const resultado = suma(2, 3);
  expect(resultado).toBe(5);
});

test('multiplicar 4 * 5 debe ser 20', () => {
  const resultado = multiplicar(4, 5);
  expect(resultado).toBe(20);
});
