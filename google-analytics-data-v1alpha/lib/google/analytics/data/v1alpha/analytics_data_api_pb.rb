# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/analytics/data/v1alpha/analytics_data_api.proto

require 'google/protobuf'

require 'google/analytics/data/v1alpha/data_pb'
require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/analytics/data/v1alpha/analytics_data_api.proto", :syntax => :proto3) do
    add_message "google.analytics.data.v1alpha.Metadata" do
      optional :name, :string, 3
      repeated :dimensions, :message, 1, "google.analytics.data.v1alpha.DimensionMetadata"
      repeated :metrics, :message, 2, "google.analytics.data.v1alpha.MetricMetadata"
    end
    add_message "google.analytics.data.v1alpha.RunReportRequest" do
      optional :entity, :message, 1, "google.analytics.data.v1alpha.Entity"
      repeated :dimensions, :message, 2, "google.analytics.data.v1alpha.Dimension"
      repeated :metrics, :message, 3, "google.analytics.data.v1alpha.Metric"
      repeated :date_ranges, :message, 4, "google.analytics.data.v1alpha.DateRange"
      optional :offset, :int64, 5
      optional :limit, :int64, 6
      repeated :metric_aggregations, :enum, 7, "google.analytics.data.v1alpha.MetricAggregation"
      optional :dimension_filter, :message, 8, "google.analytics.data.v1alpha.FilterExpression"
      optional :metric_filter, :message, 9, "google.analytics.data.v1alpha.FilterExpression"
      repeated :order_bys, :message, 10, "google.analytics.data.v1alpha.OrderBy"
      optional :currency_code, :string, 11
      optional :cohort_spec, :message, 12, "google.analytics.data.v1alpha.CohortSpec"
      optional :keep_empty_rows, :bool, 13
      optional :return_property_quota, :bool, 14
    end
    add_message "google.analytics.data.v1alpha.RunReportResponse" do
      repeated :dimension_headers, :message, 11, "google.analytics.data.v1alpha.DimensionHeader"
      repeated :metric_headers, :message, 1, "google.analytics.data.v1alpha.MetricHeader"
      repeated :rows, :message, 2, "google.analytics.data.v1alpha.Row"
      repeated :totals, :message, 8, "google.analytics.data.v1alpha.Row"
      repeated :maximums, :message, 9, "google.analytics.data.v1alpha.Row"
      repeated :minimums, :message, 10, "google.analytics.data.v1alpha.Row"
      optional :row_count, :int32, 12
      optional :metadata, :message, 6, "google.analytics.data.v1alpha.ResponseMetaData"
      optional :property_quota, :message, 7, "google.analytics.data.v1alpha.PropertyQuota"
    end
    add_message "google.analytics.data.v1alpha.RunPivotReportRequest" do
      optional :entity, :message, 1, "google.analytics.data.v1alpha.Entity"
      repeated :dimensions, :message, 2, "google.analytics.data.v1alpha.Dimension"
      repeated :metrics, :message, 3, "google.analytics.data.v1alpha.Metric"
      optional :dimension_filter, :message, 4, "google.analytics.data.v1alpha.FilterExpression"
      optional :metric_filter, :message, 5, "google.analytics.data.v1alpha.FilterExpression"
      repeated :pivots, :message, 6, "google.analytics.data.v1alpha.Pivot"
      repeated :date_ranges, :message, 7, "google.analytics.data.v1alpha.DateRange"
      optional :currency_code, :string, 8
      optional :cohort_spec, :message, 9, "google.analytics.data.v1alpha.CohortSpec"
      optional :keep_empty_rows, :bool, 10
      optional :return_property_quota, :bool, 11
    end
    add_message "google.analytics.data.v1alpha.RunPivotReportResponse" do
      repeated :pivot_headers, :message, 1, "google.analytics.data.v1alpha.PivotHeader"
      repeated :dimension_headers, :message, 7, "google.analytics.data.v1alpha.DimensionHeader"
      repeated :metric_headers, :message, 2, "google.analytics.data.v1alpha.MetricHeader"
      repeated :rows, :message, 3, "google.analytics.data.v1alpha.Row"
      repeated :aggregates, :message, 4, "google.analytics.data.v1alpha.Row"
      optional :metadata, :message, 5, "google.analytics.data.v1alpha.ResponseMetaData"
      optional :property_quota, :message, 6, "google.analytics.data.v1alpha.PropertyQuota"
    end
    add_message "google.analytics.data.v1alpha.BatchRunReportsRequest" do
      optional :entity, :message, 1, "google.analytics.data.v1alpha.Entity"
      repeated :requests, :message, 2, "google.analytics.data.v1alpha.RunReportRequest"
    end
    add_message "google.analytics.data.v1alpha.BatchRunReportsResponse" do
      repeated :reports, :message, 1, "google.analytics.data.v1alpha.RunReportResponse"
    end
    add_message "google.analytics.data.v1alpha.BatchRunPivotReportsRequest" do
      optional :entity, :message, 1, "google.analytics.data.v1alpha.Entity"
      repeated :requests, :message, 2, "google.analytics.data.v1alpha.RunPivotReportRequest"
    end
    add_message "google.analytics.data.v1alpha.BatchRunPivotReportsResponse" do
      repeated :pivot_reports, :message, 1, "google.analytics.data.v1alpha.RunPivotReportResponse"
    end
    add_message "google.analytics.data.v1alpha.GetMetadataRequest" do
      optional :name, :string, 1
    end
    add_message "google.analytics.data.v1alpha.RunRealtimeReportRequest" do
      optional :property, :string, 1
      repeated :dimensions, :message, 2, "google.analytics.data.v1alpha.Dimension"
      repeated :metrics, :message, 3, "google.analytics.data.v1alpha.Metric"
      optional :limit, :int64, 4
      optional :dimension_filter, :message, 5, "google.analytics.data.v1alpha.FilterExpression"
      optional :metric_filter, :message, 6, "google.analytics.data.v1alpha.FilterExpression"
      repeated :metric_aggregations, :enum, 7, "google.analytics.data.v1alpha.MetricAggregation"
      repeated :order_bys, :message, 8, "google.analytics.data.v1alpha.OrderBy"
      optional :return_property_quota, :bool, 9
    end
    add_message "google.analytics.data.v1alpha.RunRealtimeReportResponse" do
      repeated :dimension_headers, :message, 1, "google.analytics.data.v1alpha.DimensionHeader"
      repeated :metric_headers, :message, 2, "google.analytics.data.v1alpha.MetricHeader"
      repeated :rows, :message, 3, "google.analytics.data.v1alpha.Row"
      repeated :totals, :message, 4, "google.analytics.data.v1alpha.Row"
      repeated :maximums, :message, 5, "google.analytics.data.v1alpha.Row"
      repeated :minimums, :message, 6, "google.analytics.data.v1alpha.Row"
      optional :row_count, :int32, 7
      optional :property_quota, :message, 8, "google.analytics.data.v1alpha.PropertyQuota"
    end
  end
end

module Google
  module Analytics
    module Data
      module V1alpha
        Metadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.data.v1alpha.Metadata").msgclass
        RunReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.data.v1alpha.RunReportRequest").msgclass
        RunReportResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.data.v1alpha.RunReportResponse").msgclass
        RunPivotReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.data.v1alpha.RunPivotReportRequest").msgclass
        RunPivotReportResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.data.v1alpha.RunPivotReportResponse").msgclass
        BatchRunReportsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.data.v1alpha.BatchRunReportsRequest").msgclass
        BatchRunReportsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.data.v1alpha.BatchRunReportsResponse").msgclass
        BatchRunPivotReportsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.data.v1alpha.BatchRunPivotReportsRequest").msgclass
        BatchRunPivotReportsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.data.v1alpha.BatchRunPivotReportsResponse").msgclass
        GetMetadataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.data.v1alpha.GetMetadataRequest").msgclass
        RunRealtimeReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.data.v1alpha.RunRealtimeReportRequest").msgclass
        RunRealtimeReportResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.analytics.data.v1alpha.RunRealtimeReportResponse").msgclass
      end
    end
  end
end
