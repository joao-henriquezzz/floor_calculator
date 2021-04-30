class ResultModel {
  double areaFloor;
  int piecesByLength;
  int piecesByWidth;
  double tPrice;

  ResultModel({
    this.areaFloor = 0.0,
    this.piecesByLength = 0,
    this.piecesByWidth = 0,
    this.tPrice = 0.0,
  });

  int get amountPieces => piecesByWidth * piecesByLength;
  int get amountFooter => piecesByWidth + piecesByLength;
  int get amountPiecesAndFooter => amountPieces + amountFooter;
  double get areaWithoutFooter => amountPieces * areaFloor;
  double get areaWithFooter => amountPiecesAndFooter * areaFloor;
  double get price => areaWithFooter * tPrice;
}
