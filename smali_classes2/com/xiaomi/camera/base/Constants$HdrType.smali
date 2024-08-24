.class public interface abstract annotation Lcom/xiaomi/camera/base/Constants$HdrType;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/base/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "HdrType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DISABLED:I = 0x0

.field public static final FLASH_HDR:I = 0x2

.field public static final NORMAL_HDR:I = 0x1

.field public static final RAW_HDR:I = 0x8

.field public static final SR_HDR:I = 0x4
