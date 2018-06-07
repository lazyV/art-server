export default function Sort(arr,attr){
  for(var j=0;j<arr.length-1;j++){
    //两两比较，如果前一个比后一个大，则交换位置。
       for(var i=0;i<arr.length-1-j;i++){
            if(arr[i][attr]<arr[i+1][attr]){
                var temp = arr[i];
                arr[i] = arr[i+1];
                arr[i+1] = temp;
            }
        } 
    }
  return arr;
}