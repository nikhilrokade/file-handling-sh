#!/bin/bash
echo "Hello Program started!"
direction="/home/path"
partOfSpeech="aboard | about | above | across | after | against | along | amid | among | around | as |
at | before | behind | below | beneath | beside | besides | between | beyond | but | by | concerning | considering |
despite | down | during | except | excepting | excluding | following | for | from | in | inside | into | like | minus |
near | next | of | off | on | onto | opposite | out | outside | over | past | per | plus | regarding | round | save | since |
than | through | to | toward | towards | under | underneath | unlike | until | up | upon | versus | via | with | within |
without | according to | ahead of | apart from | as for | as of | as per | as to | because of | close to | due to |
except for | far from | in addition to | in back of | in case of | in front of | in place of | in spite of |
instead of | near to | next to | on account of | on behalf of | on top of | out of | outside of | owing to | prior to |
pursuant to | rather than | subsequent to | such as | thanks to | together with | up to"

file="$direction/engLish.txt"
output="$direction/printPOS.txt"
remains="$direction/onlyLines.txt"

mapfile -t englisLines < "$file"
> "$output"
> "$remains"
for line in "${englisLines[@]}"; do
    matches=$(echo "$line" | grep -Eo "$partOfSpeech" | tr '\n' ' ')
    if [ -n "$matches" ]; then
        echo "$matches" >> "$output"  
    fi
done

keepRemains() {
  # grep -v -f "$output" "$file" >> "$remains";
  awk -v word="$partOfSpeech" '{gsub(word," "); print}' "$file" >> "$remains"
}
keepRemains