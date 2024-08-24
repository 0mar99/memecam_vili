.class public Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;
.super Ljava/lang/Object;
.source "MultiFeatureManagerImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->batchInstallFeatures(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$3;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$800(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)Z

    return-void
.end method
