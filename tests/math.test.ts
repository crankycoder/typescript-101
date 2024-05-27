import { add } from "../src/math";

describe("Math functions", () => {
  it("should add two numbers correctly", () => {
    let x = 5;
    console.log(x);
    expect(add(1, 2)).toEqual(3);
  });
});
