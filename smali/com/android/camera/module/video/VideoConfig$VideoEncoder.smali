.class public final Lcom/android/camera/module/video/VideoConfig$VideoEncoder;
.super Ljava/lang/Object;
.source "VideoConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/video/VideoConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoEncoder"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final H263:I = 0x1

.field public static final H264:I = 0x2

.field public static final HEVC:I = 0x5

.field public static final MPEG_4_SP:I = 0x3

.field public static final TRUE_COLOUR:I = 0x6

.field public static final VP8:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
