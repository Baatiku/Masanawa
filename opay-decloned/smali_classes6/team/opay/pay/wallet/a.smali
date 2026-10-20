.class public final Lteam/opay/pay/wallet/a;
.super Ljava/lang/Object;
.source "OneButtonDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u001aW\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "",
        "message",
        "Landroidx/fragment/app/FragmentActivity;",
        "fragmentActivity",
        "confirmString",
        "",
        "showClose",
        "",
        "icon",
        "title",
        "Lkotlin/Function0;",
        "",
        "confirmCallback",
        "b",
        "(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZILjava/lang/String;Lkotlin/jvm/functions/Function0;)V",
        "sdk_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic a(Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lteam/opay/pay/wallet/a;->d(Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZILjava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 14
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    const-string v1, "message"

    .line 3
    .line 4
    move-object v5, p0

    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "fragmentActivity"

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "confirmString"

    .line 14
    .line 15
    move-object/from16 v6, p2

    .line 16
    .line 17
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "title"

    .line 21
    .line 22
    move-object/from16 v4, p5

    .line 23
    .line 24
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lteam/opay/pay/wallet/OneButtonDialog;->p:Lteam/opay/pay/wallet/OneButtonDialog$Companion;

    .line 28
    .line 29
    new-instance v13, Lteam/opay/pay/wallet/OneButtonDialogData;

    .line 30
    .line 31
    const/16 v11, 0xe0

    .line 32
    .line 33
    const/4 v12, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    move-object v2, v13

    .line 38
    move/from16 v3, p4

    .line 39
    .line 40
    move/from16 v7, p3

    .line 41
    .line 42
    invoke-direct/range {v2 .. v12}, Lteam/opay/pay/wallet/OneButtonDialogData;-><init>(ILjava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v13}, Lteam/opay/pay/wallet/OneButtonDialog$Companion;->a(Lteam/opay/pay/wallet/OneButtonDialogData;)Lteam/opay/pay/wallet/OneButtonDialog;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lena;

    .line 50
    .line 51
    move-object/from16 v3, p6

    .line 52
    .line 53
    invoke-direct {v2, v3}, Lena;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lteam/opay/pay/wallet/OneButtonDialog;->S(Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v1}, Lteam/opay/pay/base/FragmentKt;->y(Landroidx/fragment/app/FragmentActivity;Lteam/opay/core/base/BaseDialogFragment;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZILjava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p8, p7, 0x4

    .line 2
    .line 3
    if-eqz p8, :cond_0

    .line 4
    .line 5
    sget p2, Lteam/opay/pay/R$string;->confirm:I

    .line 6
    .line 7
    invoke-static {p2}, Ljmf;->k(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :cond_0
    move-object v2, p2

    .line 12
    and-int/lit8 p2, p7, 0x8

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move v3, p3

    .line 20
    :goto_0
    and-int/lit8 p2, p7, 0x10

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    .line 24
    const/4 p4, -0x1

    .line 25
    const/4 v4, -0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move v4, p4

    .line 28
    :goto_1
    and-int/lit8 p2, p7, 0x20

    .line 29
    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    const-string p5, ""

    .line 33
    .line 34
    :cond_3
    move-object v5, p5

    .line 35
    and-int/lit8 p2, p7, 0x40

    .line 36
    .line 37
    if-eqz p2, :cond_4

    .line 38
    .line 39
    const/4 p6, 0x0

    .line 40
    :cond_4
    move-object v6, p6

    .line 41
    move-object v0, p0

    .line 42
    move-object v1, p1

    .line 43
    invoke-static/range {v0 .. v6}, Lteam/opay/pay/wallet/a;->b(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;ZILjava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static final d(Lkotlin/jvm/functions/Function0;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method
