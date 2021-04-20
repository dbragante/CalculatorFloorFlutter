class ResultModel {
  double areaFloor;
  double priceByArea;
  int piecesByLength;
  int piecesByWidth;

  ResultModel({
    this.areaFloor = 0.0,
    this.piecesByLength = 0,
    this.piecesByWidth = 0,
    this.priceByArea = 0,
  });

  int get amountPieces => piecesByLength * piecesByWidth;
  int get amountFooter => piecesByLength + piecesByWidth;
  int get amountPiecesAndFooter => amountPieces + amountFooter;
  double get areaWithoutFooter => amountPieces * areaFloor;
  double get areaWithFooter => amountPiecesAndFooter * areaFloor;
  double get priceWithFooter => areaWithFooter * priceByArea;
  double get priceWithoutFooter => areaWithoutFooter * priceByArea;
}
