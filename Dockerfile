FROM base/archlinux

RUN groupadd "vim"
RUN useradd -m -g "vim" -s /bin/bash "vim"
RUN pacman -Sy --noconfirm vim git
COPY ./scripts/entrypoint.sh /opt/entrypoint.sh
USER vim
ENTRYPOINT /opt/entrypoint.sh
