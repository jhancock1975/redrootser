package com.rootser.redrootser.service.currentuser;

import com.rootser.redrootser.domain.CurrentUser;

public interface CurrentUserService {

    boolean canAccessUser(CurrentUser currentUser, Long userId);

}
