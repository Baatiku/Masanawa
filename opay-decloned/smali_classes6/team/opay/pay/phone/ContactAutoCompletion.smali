.class public final Lteam/opay/pay/phone/ContactAutoCompletion;
.super Ljava/lang/Object;
.source "ContactAutoCompletion.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0008R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0012R0\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR*\u0010$\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R6\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00150)2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00150)8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008&\u0010/R*\u00106\u001a\u0002012\u0006\u0010*\u001a\u0002018\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u00102\u001a\u0004\u00083\u00104\"\u0004\u0008+\u00105R*\u00108\u001a\u0002012\u0006\u0010*\u001a\u0002018\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u00102\u001a\u0004\u00087\u00104\"\u0004\u0008\u001e\u00105\u00a8\u00069"
    }
    d2 = {
        "Lteam/opay/pay/phone/ContactAutoCompletion;",
        "",
        "Landroid/view/View;",
        "anchor",
        "<init>",
        "(Landroid/view/View;)V",
        "",
        "b",
        "()V",
        "c",
        "Landroid/widget/ListPopupWindow;",
        "a",
        "Landroid/widget/ListPopupWindow;",
        "popup",
        "Lteam/opay/pay/phone/ContactsAdapter;",
        "Lteam/opay/pay/phone/ContactsAdapter;",
        "adapter",
        "Lteam/opay/pay/phone/RequiresContactsPermissionAdapter;",
        "Lteam/opay/pay/phone/RequiresContactsPermissionAdapter;",
        "requiresContactsPermissionAdapter",
        "Lkotlin/Function1;",
        "Lteam/opay/pay/phone/Contact;",
        "d",
        "Lkotlin/jvm/functions/Function1;",
        "getOnContactSelected",
        "()Lkotlin/jvm/functions/Function1;",
        "i",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onContactSelected",
        "Lkotlin/Function0;",
        "e",
        "Lkotlin/jvm/functions/Function0;",
        "getOnClickPermissionRequest",
        "()Lkotlin/jvm/functions/Function0;",
        "h",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onClickPermissionRequest",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "f",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "onItemClickListener",
        "",
        "value",
        "g",
        "Ljava/util/List;",
        "getContacts",
        "()Ljava/util/List;",
        "(Ljava/util/List;)V",
        "contacts",
        "",
        "Z",
        "getHasContactsPermission",
        "()Z",
        "(Z)V",
        "hasContactsPermission",
        "getCanShowPermissionsRequest",
        "canShowPermissionsRequest",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroid/widget/ListPopupWindow;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lteam/opay/pay/phone/ContactsAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lteam/opay/pay/phone/RequiresContactsPermissionAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/phone/Contact;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Landroid/widget/AdapterView$OnItemClickListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lteam/opay/pay/phone/Contact;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "anchor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/widget/ListPopupWindow;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->a:Landroid/widget/ListPopupWindow;

    .line 19
    .line 20
    new-instance v1, Lteam/opay/pay/phone/ContactsAdapter;

    .line 21
    .line 22
    invoke-direct {v1}, Lteam/opay/pay/phone/ContactsAdapter;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->b:Lteam/opay/pay/phone/ContactsAdapter;

    .line 26
    .line 27
    new-instance v1, Lteam/opay/pay/phone/RequiresContactsPermissionAdapter;

    .line 28
    .line 29
    invoke-direct {v1}, Lteam/opay/pay/phone/RequiresContactsPermissionAdapter;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->c:Lteam/opay/pay/phone/RequiresContactsPermissionAdapter;

    .line 33
    .line 34
    new-instance v1, Ldn2;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Ldn2;-><init>(Lteam/opay/pay/phone/ContactAutoCompletion;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->f:Landroid/widget/AdapterView$OnItemClickListener;

    .line 40
    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->k()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iput-object v2, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->g:Ljava/util/List;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static synthetic a(Lteam/opay/pay/phone/ContactAutoCompletion;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lteam/opay/pay/phone/ContactAutoCompletion;->d(Lteam/opay/pay/phone/ContactAutoCompletion;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final d(Lteam/opay/pay/phone/ContactAutoCompletion;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->i:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->h:Z

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->e:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->a:Landroid/widget/ListPopupWindow;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->d:Lkotlin/jvm/functions/Function1;

    .line 23
    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object p0, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->g:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->a:Landroid/widget/ListPopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->a:Landroid/widget/ListPopupWindow;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->b:Lteam/opay/pay/phone/ContactsAdapter;

    .line 16
    .line 17
    iget-object v1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->g:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lteam/opay/pay/phone/ContactsAdapter;->b(Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->a:Landroid/widget/ListPopupWindow;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->a:Landroid/widget/ListPopupWindow;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public final e(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->i:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->h:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    :try_start_0
    iget-object p1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->a:Landroid/widget/ListPopupWindow;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->isShowing()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->a:Landroid/widget/ListPopupWindow;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->show()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->a:Landroid/widget/ListPopupWindow;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lteam/opay/pay/phone/Contact;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->g:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p0}, Lteam/opay/pay/phone/ContactAutoCompletion;->c()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->h:Z

    .line 2
    .line 3
    iget-object v0, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->a:Landroid/widget/ListPopupWindow;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->c:Lteam/opay/pay/phone/RequiresContactsPermissionAdapter;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->b:Lteam/opay/pay/phone/ContactsAdapter;

    .line 11
    .line 12
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final h(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final i(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lteam/opay/pay/phone/Contact;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lteam/opay/pay/phone/ContactAutoCompletion;->d:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
