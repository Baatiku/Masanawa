.class public final Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;
.super Ljava/lang/Object;
.source "DialogShowHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001bB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J/\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R2\u0010\u001a\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r0\u0017j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r`\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;",
        "",
        "<init>",
        "()V",
        "",
        "cacheKey",
        "",
        "maxNumOfDay",
        "",
        "b",
        "(Ljava/lang/String;I)Z",
        "",
        "c",
        "Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;",
        "dialogCache",
        "",
        "time",
        "count",
        "d",
        "(Ljava/lang/String;Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;JI)V",
        "cacheTime",
        "a",
        "(J)Z",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "Ljava/util/HashMap;",
        "cache",
        "DialogCache",
        "sme-va_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;->a:Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;->b:Ljava/util/HashMap;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x1

    .line 20
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v2, v1, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x5

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-ne v0, p1, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p2, 0x0

    .line 54
    :goto_0
    return p2
.end method

.method public final b(Ljava/lang/String;I)Z
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cacheKey"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;->c()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;

    .line 23
    .line 24
    invoke-direct {v0, v1, v2, v3}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;-><init>(JI)V

    .line 25
    .line 26
    .line 27
    :cond_0
    move-object v6, v0

    .line 28
    invoke-virtual {v6}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;->getTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    const/4 v0, 0x1

    .line 33
    cmp-long v7, v4, v1

    .line 34
    .line 35
    if-eqz v7, :cond_1

    .line 36
    .line 37
    invoke-virtual {v6}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;->getTime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    invoke-virtual {p0, v1, v2}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;->a(J)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    if-lez p2, :cond_3

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v7

    .line 53
    const/4 v9, 0x1

    .line 54
    move-object v4, p0

    .line 55
    move-object v5, p1

    .line 56
    invoke-virtual/range {v4 .. v9}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;->d(Ljava/lang/String;Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;JI)V

    .line 57
    .line 58
    .line 59
    :goto_0
    const/4 v3, 0x1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v6}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;->getCount()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-lt v1, p2, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v7

    .line 72
    invoke-virtual {v6}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;->getCount()I

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    add-int/lit8 v9, p2, 0x1

    .line 77
    .line 78
    move-object v4, p0

    .line 79
    move-object v5, p1

    .line 80
    invoke-virtual/range {v4 .. v9}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;->d(Ljava/lang/String;Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;JI)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    :goto_1
    return v3
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-static {}, Lkt6;->g()Lcom/google/gson/Gson;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Loaf;->a:Loaf;

    .line 6
    .line 7
    invoke-virtual {v1}, Loaf;->r()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$a;

    .line 12
    .line 13
    invoke-direct {v2}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$a;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/HashMap;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    :cond_0
    sput-object v0, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;->b:Ljava/util/HashMap;

    .line 34
    .line 35
    return-void
.end method

.method public final d(Ljava/lang/String;Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;JI)V
    .locals 0

    .line 1
    invoke-virtual {p2, p3, p4}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;->setTime(J)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2, p5}, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper$DialogCache;->setCount(I)V

    .line 5
    .line 6
    .line 7
    sget-object p3, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;->b:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    sget-object p1, Loaf;->a:Loaf;

    .line 13
    .line 14
    invoke-static {}, Lkt6;->g()Lcom/google/gson/Gson;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    sget-object p3, Lteam/opay/sme/va/receive/staticAccount/home/DialogShowHelper;->b:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Loaf;->L(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
