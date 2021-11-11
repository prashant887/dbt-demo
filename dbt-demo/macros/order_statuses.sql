{% macro order_statuses() %}
    {{ return (["COMPLETE","ON_HOLD","PENDING_PAYMENT","PENDING","CLOSED","CANCELED","PROCESSING","PAYMENT_REVIEW","SUSPECTED_FRAUD"]) }}
{% endmacro %}