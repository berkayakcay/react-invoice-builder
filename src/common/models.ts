export interface GenericParameter<T> {
  body: T;
}

export interface CompanyInfoModel {
  name: string;
  registerNumber: string;
  taxOffice: string;
  tradeRegistryNumber: string;
  mersisNumber: string;
  phone: string;
  fax: string;
  address: string;
  district: string;
  city: string;
  country: string;
  postalCode: string;
  buildingNumber: string;
  doorNumber: string;
  mail: string;
  webSite: string;
}

export interface DocumentNotesModel {
  firstNote: string;
  secondNote: string;
  thirdNote: string;
}

export interface LogoModel {
  logoSrc: string;
  logoCrop: object | any;
  logoZoom: number;
  logoAspect: number;
  logoCroppedAreaPixels: any;
  logoCroppedImage: any;
}

export interface SignatureModel {
  signatureSrc: string;
  signatureCrop: object | any;
  signatureZoom: number;
  signatureAspect: number;
  signatureCroppedAreaPixels: any;
  signatureCroppedImage: any;
}

export interface BankInfoModel {
  bankName: string;
  branch: string;
  branchCode: string;
  accountCode: string;
  accountType: string;
  iban: string;
  accountName: string;
}

export interface ThemeModel {
  Theme: number;
}

export interface ProductModel {
  Product: boolean;
}
