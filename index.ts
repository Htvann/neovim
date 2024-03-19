interface Strategy {
  authenticate(args: any[]): boolean;
}
enum TYPE {
  twitter = "twitter",
  facebook = "facebook",
}

class TwitterStrategy implements Strategy {
  authenticate(args: any[]) {
    console.log("args", args);
    const [token] = args;
    if (token !== "tw123") {
      console.error("Twitter account authentication failed!");
      return false;
    }
    console.log("Twitter account authentication succeeded!");
    return true;
  }
}

class Authenticate {
  strategies: Record<string, Strategy> = {};

  constructor(name: TYPE, strategy: Strategy) {
    this.strategies[name] = strategy;
  }

  authenticate(name: TYPE, ...args: any) {
    if (!this.strategies[name]) {
      console.error("Authentication policy has not been set!");
      return false;
    }
    return this.strategies[name].authenticate.apply(null, args);
  }
}

const auth = new Authenticate(TYPE.twitter, new TwitterStrategy());

function login(mode: TYPE, ...args: any) {
  return auth.authenticate(mode, args);
}

const handleExample = () => {
  return 123;
};

login("twitter" as TYPE.twitter, "tw123");
