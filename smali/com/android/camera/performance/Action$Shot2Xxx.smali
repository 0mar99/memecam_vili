.class public Lcom/android/camera/performance/Action$Shot2Xxx;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/performance/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Shot2Xxx"
.end annotation


# static fields
.field public static final SHOT_2_GALLERY:Ljava/lang/String; = "shot_2_gallery"

.field public static final SHOT_2_SHOT:Ljava/lang/String; = "shot_2_shot"

.field public static final SHOT_2_VIEW:Ljava/lang/String; = "shot_2_view_"

.field public static final SHOT_CREATE_THUMBNAIL:Ljava/lang/String; = "shot_create_thumbnail"

.field public static final SHOT_DEVICE_CAPTURE:Ljava/lang/String; = "shot_device_capture"

.field public static final SHOT_ON_SHUTTER:Ljava/lang/String; = "shot_on_shutter"

.field public static final SHOT_PREPARE_CAPTURE:Ljava/lang/String; = "shot_prepare_capture"

.field public static final SHOT_THUMBNAIL_GAP:Ljava/lang/String; = "shot_thumbnail_gap"


# instance fields
.field public final synthetic this$0:Lcom/android/camera/performance/Action;


# direct methods
.method public constructor <init>(Lcom/android/camera/performance/Action;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/performance/Action$Shot2Xxx;->this$0:Lcom/android/camera/performance/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
