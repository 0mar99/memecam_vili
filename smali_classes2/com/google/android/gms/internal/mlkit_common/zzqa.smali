.class public final Lcom/google/android/gms/internal/mlkit_common/zzqa;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.7.0"


# static fields
.field public static final zza:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzqa;->zza:Ljava/util/Map;

    return-void
.end method

.method public static zza()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzqa;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
