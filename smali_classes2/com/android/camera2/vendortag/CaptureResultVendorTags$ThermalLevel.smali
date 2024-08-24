.class public interface abstract annotation Lcom/android/camera2/vendortag/CaptureResultVendorTags$ThermalLevel;
.super Ljava/lang/Object;
.source "CaptureResultVendorTags.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/vendortag/CaptureResultVendorTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ThermalLevel"
.end annotation


# static fields
.field public static final INVALID:I = 0xff

.field public static final THERMAL_LEVEL_HIGH:I = 0x5

.field public static final THERMAL_LEVEL_LOW:I = 0x0

.field public static final THERMAL_LEVEL_MID:I = 0x4

.field public static final THERMAL_LEVEL_THERMAL_BREAK:I = 0x1

.field public static final THERMAL_LEVEL_THERMAL_HOT:I = 0x2

.field public static final THERMAL_LEVEL_THERMAL_HURT:I = 0x3
