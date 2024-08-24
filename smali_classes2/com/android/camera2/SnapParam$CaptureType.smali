.class public interface abstract annotation Lcom/android/camera2/SnapParam$CaptureType;
.super Ljava/lang/Object;
.source "SnapParam.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/SnapParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "CaptureType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CAPTURE_TYPE_BURST:I = 0x2

.field public static final CAPTURE_TYPE_INVALID:I = 0x0

.field public static final CAPTURE_TYPE_RAW_BOKEH:I = 0x4

.field public static final CAPTURE_TYPE_RAW_HDR:I = 0x3

.field public static final CAPTURE_TYPE_SINGLE:I = 0x1
