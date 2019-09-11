export interface GenericParameter<T> {
  baseUrl: string
  subUrl?: string
  id?: string
  body: T
}


export interface CompnayInfoModel {
  name: string,
  registerNumber: string,
  address: string,
  city: string,
  district: string
}


export interface BankInfoModel {
  name: string
}


export interface DocumentNotesModel {
  name: string
}