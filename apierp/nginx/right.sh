#!/bin/bash

# Changer directory permission Storage
chgrp -R www-data storage bootstrap/cache
chmod -R ug+rwx storage bootstrap/cache