export interface GenericParameter<T> {
  body: T;
}

export interface CompanyInfoModel {
  name: string;
  registerNumber: string;
  taxOffice: string;
  ticaretSicilNo: string;
  mersisNo: string;
  phone: string;
  fax: string;
  address: string;
  district: string;
  city: string;
  country: string;
}

export interface DocumentNotesModel {
  firstNote: string;
  secondNote: string;
  thirdNote: string;
}

export interface LogoAndSignatureModel {
  name: string;
}

export interface BankInfoModel {
  bankName: string;
  branch: string;
  branchCode: string;
  accountCode: string;
  accountType: string;
  iban: string;
}
