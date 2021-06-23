abstract class Mapper<Input, Output> {
  Output mapper(Input input);

  List<Output> mapList(List<Input>? inputs) {
    final List<Output> outPut = [];
    inputs?.forEach((input) {
      outPut.add(mapper(input));
    });
    return outPut;
  }
}
