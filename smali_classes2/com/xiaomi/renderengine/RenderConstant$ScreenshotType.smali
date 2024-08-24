.class public interface abstract annotation Lcom/xiaomi/renderengine/RenderConstant$ScreenshotType;
.super Ljava/lang/Object;
.source "RenderConstant.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/renderengine/RenderConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ScreenshotType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final SCREEN_SHOT_TYPE_AF_SALIENCY:I = 0x3

.field public static final SCREEN_SHOT_TYPE_AF_SALIENCY_SEPARATION:I = 0x4

.field public static final SCREEN_SHOT_TYPE_DEFAULT:I = 0x1

.field public static final SCREEN_SHOT_TYPE_FILM:I = 0x2

.field public static final SCREEN_SHOT_TYPE_FULL:I = 0x5
