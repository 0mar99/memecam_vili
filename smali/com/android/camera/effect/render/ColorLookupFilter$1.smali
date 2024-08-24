.class public Lcom/android/camera/effect/render/ColorLookupFilter$1;
.super Ljava/lang/Object;
.source "ColorLookupFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/render/ColorLookupFilter;->onInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/effect/render/ColorLookupFilter;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/render/ColorLookupFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/effect/render/ColorLookupFilter$1;->this$0:Lcom/android/camera/effect/render/ColorLookupFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/render/ColorLookupFilter$1;->this$0:Lcom/android/camera/effect/render/ColorLookupFilter;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/effect/render/ColorLookupFilter$1;->this$0:Lcom/android/camera/effect/render/ColorLookupFilter;

    invoke-static {p0}, Lcom/android/camera/effect/render/ColorLookupFilter;->access$100(Lcom/android/camera/effect/render/ColorLookupFilter;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->loadTexture(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/camera/effect/render/ColorLookupFilter;->access$002(Lcom/android/camera/effect/render/ColorLookupFilter;I)I

    return-void
.end method
