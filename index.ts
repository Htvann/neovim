interface Main {
  value: string;
}
function checkfunction() {}

export const checkname = (value: Main) => {
  console.log("value", value.value);
};

checkfunction();
