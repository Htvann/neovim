interface Main {
  value: string;
}

type Val = {
  value: string;
  fun: () => void;
};

type mm = {
  value: number;
};

export const checkname = (value: Main | Val) => {
  console.log("value", value.value);
};
