.class public abstract Lcom/google/android/gms/internal/common/zzm;
.super Lcom/google/android/gms/internal/common/zzk;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# instance fields
.field public final zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzk;-><init>()V

    const-string p1, "CharMatcher.none()"

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzm;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/common/zzm;->zza:Ljava/lang/String;

    return-object p0
.end method
