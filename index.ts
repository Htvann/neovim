interface Main {
  value: string;
}

function checkfunction() {
  console.log("12312312");
}

export const checkname = (value: Main) => {
  console.log("value", value.value);
};

checkfunction();
