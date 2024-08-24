.class public Lcom/android/camera/module/FunModule$4;
.super Lcom/android/camera/module/interceptor/CaptureInterceptor;
.source "FunModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/FunModule;->fillFeatureControl(Lcom/android/camera/module/loader/StartControl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/FunModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/FunModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/FunModule$4;->this$0:Lcom/android/camera/module/FunModule;

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/CaptureInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public intercept()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/protocols/LiveFilmChooser;->impl2()Lcom/android/camera/protocol/protocols/LiveFilmChooser;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/LiveFilmChooser;->startShot()V

    :cond_0
    return-void
.end method
