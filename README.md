# Homebrew for Scavenger


This homebrew formulae builds the scavenger mining software written by the [POCC](https://github.com/PoC-Consortium/scavenger/).



# How To Setup


You will need to tap the brew formula, to do this run the following command:



```
brew tap nixops/homebrew-scavenger
```



Next you will want to update brew with the following command, this will now detect the formula.



```
brew update 
```


Now run the following command in order to do the installation, this will install rust if it is not already on your os.



```
brew install scavenger
```



To run scavenger from the commandline you will need to define a config.yaml or you will receive an error. The default config.yaml from the supplied source code is under your homebrew installation directory:


```
/usr/local/Cellar/scavenger/1.7.8/bin/
```

Example command using the default setup would look like the following:


```
scavenger -c /usr/local/Cellar/scavenger/1.7.8/bin/config.yaml
```



You could copy this file with the following command:


```
cp -rp /usr/local/Cellar/scavenger/1.7.8/bin/config.yaml
```

# Configuration

You will want to modify the config.yaml in order to mine. Please reference the yaml in the [POCC's Github](https://github.com/PoC-Consortium/scavenger/blob/master/config.yaml)


# TODO

1. Add proper test
2. Push to brew core