declare module "@salesforce/apex/ProductFetch.Accountsearch" {
  export default function Accountsearch(param: {accser: any}): Promise<any>;
}
declare module "@salesforce/apex/ProductFetch.ProductName" {
  export default function ProductName(): Promise<any>;
}
declare module "@salesforce/apex/ProductFetch.GetRelatedCases" {
  export default function GetRelatedCases(param: {ProductCombination: any}): Promise<any>;
}
declare module "@salesforce/apex/ProductFetch.fetchCaseWrapper" {
  export default function fetchCaseWrapper(param: {ProductCombination: any}): Promise<any>;
}
