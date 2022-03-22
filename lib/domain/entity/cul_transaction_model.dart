abstract class CulTransactionModel {
  String trans_type;
  String trans_date;
  double trans_quantity;
  String trans_uom;
  String trans_description;
  CulTransactionModel(this.trans_type, this.trans_date, this.trans_quantity,
      this.trans_uom, this.trans_description);
}