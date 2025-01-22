# source <(kubectl completion zsh)
source <(kafkactl completion zsh)

alias k=kubectl

alias composer8.1='php8.1 /usr/local/bin/composer "$@"'
alias composer8.2='php8.2 /usr/local/bin/composer "$@"'

alias mos-configuration-make='make -C /home/fred-jan/dev/configuration'
alias mos-customer-make='make -C /home/fred-jan/dev/customer'
alias mos-dev-make='make -C /home/fred-jan/dev/docker-dev'
alias mos-graphql-gateway='make -C /home/fred-jan/dev/graphql-gateway'
alias mos-monolith-make='make -C /home/fred-jan/dev/myonlinestore'
alias mos-marketing-subscription-make='make -C /home/fred-jan/dev/MarketingSubscriptionService'
alias mos-payment-make='make -C /home/fred-jan/dev/payment'
alias mos-save-for-later-make='make -C /home/fred-jan/dev/save-for-later'
alias mos-tax-policy-make='make -C /home/fred-jan/dev/tax-policy'

function mos-start() {
    mos-configuration-make start
    mos-customer-make start
    #mos-marketing-subscription-make start
    mos-payment-make start
    mos-save-for-later-make start
    mos-tax-policy-make start
    mos-dev-make start
    mos-monolith-make start    
    mos-graphql-gateway start
}

function start-day() {
    sudo apt update && sudo apt upgrade -y
    sudo snap refresh
    mos-start
}

function dc() {
    if [ -f ".env.compose" ]; then
        docker compose --env-file=.env.compose $@
    else
        docker compose $@
    fi
}

alias docker-logs='docker ps -q | xargs -L 1 -P `docker ps | wc -l` docker logs --since 30s -f'
