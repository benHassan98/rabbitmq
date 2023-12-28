FROM rabbitmq:3.8.0-management

RUN rabbitmq-plugins enable --offline rabbitmq_stomp

COPY rabbitmq.conf /etc/rabbitmq/

ENV RABBITMQ_NODENAME=rabbit@localhost

RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

USER rabbitmq:rabbitmq
