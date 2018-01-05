FROM base/archlinux

RUN groupadd "vim"
RUN useradd -m -g "vim" -s /bin/bash "vim"
RUN pacman -Sy --noconfirm vim git make
COPY ./scripts /scripts
USER vim
ENTRYPOINT /scripts/entrypoint.sh
