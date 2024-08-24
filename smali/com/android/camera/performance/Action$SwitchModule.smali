.class public Lcom/android/camera/performance/Action$SwitchModule;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/performance/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwitchModule"
.end annotation


# static fields
.field public static final SWITCH_CAMERA_2_OPEN:Ljava/lang/String; = "switch_camera_2_open"

.field public static final SWITCH_CAMERA_PREPARE:Ljava/lang/String; = "switch_camera_prepare"

.field public static final SWITCH_CHANGE_MODE:Ljava/lang/String; = "switch_change_mode_"

.field public static final SWITCH_DATA_SETUP:Ljava/lang/String; = "switch_data_setup"

.field public static final SWITCH_MODULE_SETUP:Ljava/lang/String; = "switch_module_setup"

.field public static final SWITCH_PREFIX_CAMERA_SETUP:Ljava/lang/String; = "switch_prefix_camera_setup"

.field public static final SWITCH_PROVIDE_ANIMATE:Ljava/lang/String; = "switch_provide_animate"

.field public static final SWITCH_SETUP_CONSUMER:Ljava/lang/String; = "switch_setup_consumer"

.field public static final SWITCH_UI_SETUP:Ljava/lang/String; = "switch_ui_setup"


# instance fields
.field public final synthetic this$0:Lcom/android/camera/performance/Action;


# direct methods
.method public constructor <init>(Lcom/android/camera/performance/Action;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/performance/Action$SwitchModule;->this$0:Lcom/android/camera/performance/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
