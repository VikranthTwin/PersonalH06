declare module "@salesforce/apex/FileUploadController.uploadFile" {
  export default function uploadFile(param: {fileName: any, base64Data: any, contentType: any}): Promise<any>;
}
