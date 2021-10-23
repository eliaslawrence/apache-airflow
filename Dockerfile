FROM apache/airflow:2.1.4

# COPY --chown=airflow:root test_dag.py /opt/airflow/dags
# COPY --chown=airflow:root /dags/* /opt/airflow/dags/

# Volumes (Host/Container)
# WORKDIR /opt/airflow/
# VOLUME /dags
# WORKDIR /

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
# CMD ["webserver"]
CMD []