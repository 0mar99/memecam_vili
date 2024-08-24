.class public final Lcom/google/android/gms/dynamic/zag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/dynamic/zah;


# instance fields
.field public final synthetic zaa:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zag;->zaa:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final zab(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/dynamic/zag;->zaa:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zaa(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onResume()V

    return-void
.end method
