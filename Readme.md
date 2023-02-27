# Obsidian Admonition to Callout

An easy way to move from the [Admonition plug-in](https://github.com/valentine195/obsidian-admonition) to the core [Callout functionality](https://help.obsidian.md/Editing+and+formatting/Callouts).

This is an GAWK script that make the most basic move of tranforming

```md
`` ` ```` ` ```` ` ``ad-check
A check on one line

and on some other lines as well
ending with an extra space

`` ` ```` ` ```` ` ``
```

into 
```md
> [!check]
> A check on one line
>
> and on some other lines as well
> ending with an extra space
>

```

## Usage

```
OIFS="$IFS"
IFS=$'\n'
for FILE in `find {YOU_OBSIDIAN_VAULT_DIR} -name '*.md'`; do gawk -i inplace -f admonition-to-callout.awk $FILE; done
IFS="$OIFS"
```

## Run test

Use the `./test.sh` command to run the tests. 