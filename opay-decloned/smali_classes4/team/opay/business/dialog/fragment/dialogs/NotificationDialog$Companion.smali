.class public final Lteam/opay/business/dialog/fragment/dialogs/NotificationDialog$Companion;
.super Ljava/lang/Object;
.source "NotificationDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lteam/opay/business/dialog/fragment/dialogs/NotificationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lteam/opay/business/dialog/fragment/dialogs/NotificationDialog$Companion;",
        "",
        "<init>",
        "()V",
        "Lteam/opay/business/dialog/fragment/dialogs/NotificationDialog;",
        "c",
        "()Lteam/opay/business/dialog/fragment/dialogs/NotificationDialog;",
        "Landroid/content/Context;",
        "context",
        "",
        "interval",
        "",
        "a",
        "(Landroid/content/Context;I)Z",
        "business-dialog_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lteam/opay/business/dialog/fragment/dialogs/NotificationDialog$Companion;-><init>()V

    return-void
.end method

.method public static synthetic b(Lteam/opay/business/dialog/fragment/dialogs/NotificationDialog$Companion;Landroid/content/Context;IILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x7

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lteam/opay/business/dialog/fragment/dialogs/NotificationDialog$Companion;->a(Landroid/content/Context;I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)Z
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Luz9;->a:Luz9;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Luz9;->b(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    sget-object p1, Lie3;->b:Lie3;

    .line 21
    .line 22
    invoke-virtual {p1}, Lie3;->h()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    sub-long/2addr v1, v3

    .line 27
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    int-to-long p1, p2

    .line 34
    cmp-long v3, v1, p1

    .line 35
    .line 36
    if-lez v3, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    :cond_1
    return v0
.end method

.method public final c()Lteam/opay/business/dialog/fragment/dialogs/NotificationDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lteam/opay/business/dialog/fragment/dialogs/NotificationDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lteam/opay/business/dialog/fragment/dialogs/NotificationDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
