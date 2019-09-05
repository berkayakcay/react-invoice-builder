export interface GenericParameter<T> {
  baseUrl: string
  subUrl?: string
  id?: string
  body: T
}
