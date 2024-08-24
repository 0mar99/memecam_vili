.class public final Lcom/google/android/gms/internal/mlkit_common/zzpx;
.super Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;
.source "com.google.mlkit:common@@18.7.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzpw;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/mlkit/common/sdkinternal/LazyInstanceMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzph;

    .line 2
    new-instance p0, Lcom/google/android/gms/internal/mlkit_common/zzpn;

    .line 3
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzpi;

    .line 4
    invoke-static {}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getInstance()Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzpi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/zzph;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzph;->zzb()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 7
    invoke-virtual {v0, v3}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;

    .line 8
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/google/android/gms/internal/mlkit_common/zzpn;-><init>(Landroid/content/Context;Lcom/google/mlkit/common/sdkinternal/SharedPrefManager;Lcom/google/android/gms/internal/mlkit_common/zzpf;Ljava/lang/String;)V

    return-object p0
.end method
