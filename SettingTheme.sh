#!/bin/bash

# Przyjmuje ścieżkę do folderu jako argument
DIR_PATH=$1

# Sprawdza, czy folder gtk-4.0 istnieje w podanej ścieżce
if [ -d "$DIR_PATH/gtk-4.0" ]; then
    # Kopiuje zawartość folderu gtk-4.0 do ~/.config/gtk-4.0/
    cp -r $DIR_PATH/gtk-4.0/*.css ~/.config/gtk-4.0/
fi

# Kopiuje cały podany folder do /usr/share/themes/
sudo cp -r $DIR_PATH /usr/share/themes/

echo "Operacja zakończona pomyślnie"