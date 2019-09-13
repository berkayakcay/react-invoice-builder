export interface GenericParameter<T> {
  body: T;
}

export interface CompnayInfoModel {
  name: string;
  registerNumber: string;
  address: string;
  city: string;
  district: string;
}

export interface DocumentNotesModel {
  name: string;
}

export interface LogoAndSignatureModel {
  name: string;
}

export interface BankInfoTypeModel {
  bankName: string;
  branch: string;
  branchCode: string;
  accountCode: string;
  accountType: string;
  iban: string;
}
