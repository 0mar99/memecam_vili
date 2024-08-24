.class public Lmiuix/graphics/FileIconUtils;
.super Ljava/lang/Object;
.source "FileIconUtils.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "FileIconHelper"

.field public static final TYPE_APK:Ljava/lang/String; = "apk"

.field public static sFileExtToIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiuix/graphics/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    const-string v0, "mp3"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_mp3:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "wma"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_wma:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "wav"

    .line 4
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_wav:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "mid"

    .line 5
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_mid:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v2, "mp4"

    const-string v3, "wmv"

    const-string v4, "mpeg"

    const-string v5, "m4v"

    const-string v6, "3gp"

    const-string v7, "3g2"

    const-string v8, "3gpp2"

    const-string v9, "asf"

    const-string v10, "flv"

    const-string v11, "mkv"

    const-string v12, "vob"

    const-string v13, "ts"

    const-string v14, "f4v"

    const-string v15, "rm"

    const-string v16, "mov"

    const-string v17, "rmvb"

    .line 6
    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_video:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v2, "jpg"

    const-string v3, "jpeg"

    const-string v4, "gif"

    const-string v5, "png"

    const-string v6, "bmp"

    const-string v7, "wbmp"

    .line 7
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_picture:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "txt"

    const-string v1, "log"

    const-string v2, "ini"

    const-string v3, "lrc"

    .line 8
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_txt:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "doc"

    const-string v1, "docx"

    .line 9
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_doc:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "ppt"

    const-string v1, "pptx"

    .line 10
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_ppt:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "xls"

    const-string v1, "xlsx"

    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_xls:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "wps"

    .line 12
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_wps:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "pps"

    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_pps:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "et"

    .line 14
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_et:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "wpt"

    .line 15
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_wpt:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "ett"

    .line 16
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_ett:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "dps"

    .line 17
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_dps:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "dpt"

    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_dpt:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "pdf"

    .line 19
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_pdf:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "zip"

    .line 20
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_zip:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "mtz"

    .line 21
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_theme:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "rar"

    .line 22
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_rar:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "apk"

    .line 23
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_apk:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "amr"

    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_amr:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "vcf"

    .line 25
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_vcf:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "flac"

    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_flac:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "aac"

    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_aac:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "ape"

    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_ape:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "m4a"

    .line 29
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_m4a:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "ogg"

    .line 30
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_ogg:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "audio"

    .line 31
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_audio:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "html"

    .line 32
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_html:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "xml"

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_xml:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "3gpp"

    .line 34
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiuix/graphics/R$drawable;->file_icon_3gpp:I

    invoke-static {v0, v1}, Lmiuix/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p0, Ljava/lang/InstantiationException;

    const-string v0, "Cannot instantiate utility class"

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addItem([Ljava/lang/String;I)V
    .locals 5

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    sget-object v3, Lmiuix/graphics/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileIconHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lmiuix/graphics/R$drawable;->file_icon_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getFileIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-static {p1}, Lmiuix/graphics/FileIconUtils;->getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apk"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0, p1}, Lmiuix/graphics/FileIconUtils;->getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Lmiuix/graphics/FileIconUtils;->getFileIconId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getFileIconId(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lmiuix/graphics/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    .line 2
    sget p0, Lmiuix/graphics/R$drawable;->file_icon_default:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method
