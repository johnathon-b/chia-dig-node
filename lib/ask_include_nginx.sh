#!/bin/bash

ask_include_nginx() {
    echo -e "\n${BLUE}Would you like to include the Nginx reverse-proxy container?${NC}"
    read -p "(y/n): " -n 1 -r
    echo    # Move to a new line

    if [[ $REPLY =~ ^[Yy]$ ]]; then
        INCLUDE_NGINX="yes"
    else
        INCLUDE_NGINX="no"
        echo -e "\n${YELLOW}Warning:${NC} You have chosen not to include the Nginx reverse-proxy container."
        echo -e "${YELLOW}Unless you plan on exposing port 80/443 in another way, your DIG Node's content server will be inaccessible to the browser.${NC}"
    fi
}
